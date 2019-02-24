class Solution:
    def numUniqueEmails(self, emails: 'List[str]') -> 'int':
        """
        :type emails: List[str]
        :rtype: int
        """
        lookup = set()

        for email in emails:
            lookup.add(self.convert(email))

        return len(lookup)

    def convert(self, email):
        name, domain = email.split('@')

        if '+' in name:
            name = name[:name.index('+')]

        return "".join(["".join(name.split(".")), '@', domain])
